using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {//normal enemy
	
	
	public Transform planet;
	public ParticleSystem bloodParticle;
		
	// Use this for initialization
	void Start () {
		
	}
	
	
	
	void LateUpdate()    
    {

    }
 
	
  	void OnTriggerEnter (Collider hit)
	{
		if(hit.tag == "Despawner")//despawn
		{
			Destroy(gameObject);
		}else if(hit.tag == "Player")//attack by player
		{
			ScoreKeeper.instance.ChangeScore(1);
			AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemySwordDeathSound(), transform.position, 1f);//death audio
			HealthController.instance.ChangeHP(-10);
			KillSelf();
		}else if(hit.tag == "Enemy")//stomped by Juggs
		{
			AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemySwordDeathSound(), transform.position);//death audio	
			KillSelf();
		}
		
	}
	//ranged attack
  	void OnMouseDown() {
		AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemyArrowDeathSound(), transform.position, .1f);
		ScoreKeeper.instance.ChangeScore(1);
        KillSelf();
    }
	
	void KillSelf()
	{
		
		Instantiate(bloodParticle, transform.position, transform.rotation);
		Destroy(gameObject);
	}
 
}

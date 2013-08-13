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
			AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemySwordDeathSound(), transform.position);//death audio
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
		AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemyArrowDeathSound(), transform.position);
        KillSelf();
    }
	
	void KillSelf()
	{
		Destroy(gameObject, .3f);//delay to play particles
		ScoreKeeper.instance.ChangeScore(1);
		//death animation
		MeshRenderer mr = transform.gameObject.GetComponent<MeshRenderer>();
		mr.enabled = false;
		Collider cr = transform.gameObject.GetComponent<Collider>();
		cr.enabled = false;
		bloodParticle.Play();
	}
 
}

using UnityEngine;
using System.Collections;

public class Wall : MonoBehaviour {//wall object
	public ParticleSystem woodParticle;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter (Collider hit)
	{
		if(hit.tag == "Despawner")//despawn
		{
			Destroy(gameObject);
		}else if(hit.tag == "Player")
		{
			HealthController.instance.ChangeHP(-50);
			AudioSource.PlayClipAtPoint(SoundController.instance.GetPlayerWallHitSound(), transform.position);//player hit audio		
		}else if(hit.tag == "Enemy")//stomped by Juggs
		{
			AudioSource.PlayClipAtPoint(SoundController.instance.GetPlayerWallHitSound(), transform.position);	
			KillSelf();
		}
		
	}
	
	void KillSelf()
	{
		woodParticle.Play();
		woodParticle.transform.parent = null;
		Destroy(gameObject);
		
	}
}

using UnityEngine;
using System.Collections;

public class Wall : MonoBehaviour {//wall object

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
			KillSelf();
		}else if(hit.tag == "Player")
		{
			AudioSource.PlayClipAtPoint(SoundController.instance.GetPlayerWallHitSound(), transform.position);//player hit audio		
		}
		
	}
	
	void KillSelf()
	{
		Destroy(gameObject);
		
	}
}

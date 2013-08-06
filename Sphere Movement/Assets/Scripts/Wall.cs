using UnityEngine;
using System.Collections;

public class Wall : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter (Collider hit)
	{
		if(hit.tag == "Despawner")
		{
			KillSelf();
		}else if(hit.tag == "Player")
		{
			AudioSource.PlayClipAtPoint(SoundController.instance.GetPlayerWallHitSound(), transform.position);		}
		
		}
	
	void KillSelf()
	{
		Destroy(gameObject);
		
	}
}

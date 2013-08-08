using UnityEngine;
using System.Collections;

public class JuggernautMove : MonoBehaviour {
	
	public GameObject planet;
	
	// Use this for initialization
	void Start () {
		planet = GameObject.FindGameObjectWithTag("Planet");
	}
	
	// Update is called once per frame
	void Update () {
		transform.RotateAround(Vector3.zero, transform.right, -3f * Time.deltaTime);//move along surface of planet
	}
	
	void OnTriggerEnter (Collider hit)
	{
		if(hit.tag == "Despawner")//despawn
		{
			KillSelf();
		}else if(hit.tag == "Player")//attack by player
		{
			AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemySwordDeathSound(), transform.position);//death audio
			KillSelf();
		}
		
	}
	
	void KillSelf()
	{
		Destroy(gameObject, .3f);//delay to play particles
		
		//death animation
		MeshRenderer mr = transform.gameObject.GetComponent<MeshRenderer>();
		mr.enabled = false;
		Collider cr = transform.gameObject.GetComponent<Collider>();
		cr.enabled = false;
	}
}

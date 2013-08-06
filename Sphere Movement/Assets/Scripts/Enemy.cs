using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {
	
	public float radius = 0.5f;
    public float translateSpeed = 5.0f;
	public Transform planet;
	public ParticleSystem bloodParticle;
	float angle = 0.0f;
    Vector3 direction = Vector3.one;
    Quaternion rotation = Quaternion.identity;
	int start = 1;
	
	private Transform sphere;

    public float speed= 5.0f;
	
	//private float[] startPos = {0f, .5f, 1f, 1.5f, 2f, 2.5f, 3f, 3.5f, 4f, 4.5f, 5f, 5.5f, 6f, 6.5f, 7f, 7.5f, 8f, 8.5f, 9f, 9.5f,
	//							-.5f, -1f, -1.5f, -2f, -2.5f, -3f, -3.5f, -4f, -4.5f, -5f, -5.5f, -6f, -6.5f, -7f, -7.5f, -8f, -8.5f, -9f, -9.5f};
	
	// Use this for initialization
	void Start () {
		direction = new Vector3(Mathf.Sin(angle), Mathf.Cos(angle));
		sphere = GameObject.Find("Planet").transform;

		
		
	}
	
	
	
	void LateUpdate()    
    {
//		if(start == 1)
//		{
//			int i = Random.Range(0,39);
//		
//			transform.RotateAround (transform.parent.position, transform.forward, startPos[i]);
//		
//			start = 0;
//		}
        
 
        // Translate left/right with A/D. Bad keys but quick test.
//        if (Input.GetKeyDown(KeyCode.A))
//		{
//			transform.RotateAround (sphere.position, transform.up, 1);
//		}
//        if (Input.GetKeyDown(KeyCode.D))
//		{
//			
//			transform.RotateAround (sphere.position, transform.up, -1);
//		}
//		if (Input.GetKeyDown(KeyCode.H))
//		{
//            qTo = q * qTo;
//		}
//        trCenter.localRotation = Quaternion.RotateTowards(trCenter.localRotation, qTo, speed * Time.deltaTime);   

 
    }
 
  	void OnTriggerEnter (Collider hit)
	{
		if(hit.tag == "Despawner")
		{
			KillSelf();
		}else if(hit.tag == "Player")
		{
			AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemySwordDeathSound(), transform.position);
			KillSelf();
		}
		
	}
	
  	void OnMouseDown() {
		AudioSource.PlayClipAtPoint(SoundController.instance.GetEnemyArrowDeathSound(), transform.position);
        KillSelf();
    }
	
	void KillSelf()
	{
		Destroy(gameObject, .3f);
		
		MeshRenderer mr = transform.gameObject.GetComponent<MeshRenderer>();
		mr.enabled = false;
		Collider cr = transform.gameObject.GetComponent<Collider>();
		cr.enabled = false;
		bloodParticle.Play();
	}
 
}

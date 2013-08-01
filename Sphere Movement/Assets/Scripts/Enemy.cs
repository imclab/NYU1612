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
    private Transform trCenter;
    private Quaternion q; 
    private Quaternion qTo;
    public float speed= 5.0f;
	
	// Use this for initialization
	void Start () {
		direction = new Vector3(Mathf.Sin(angle), Mathf.Cos(angle));
		sphere = GameObject.Find("Planet").transform;
        q = Quaternion.AngleAxis(5.0f, transform.up);
        trCenter = new GameObject().transform;
        trCenter.rotation = sphere.rotation;
        trCenter.parent = sphere;
        trCenter.position = sphere.position;
        transform.parent = trCenter;
        qTo = transform.localRotation;
		
	}
	
	
	
	void LateUpdate()    
    {
		if(start == 1)
		{
			int i = Random.Range(1,16);
		
			if(i == 1)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -3);
			}else if(i == 2)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -2);
			}else if(i == 3)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -1);
			}else if(i == 4)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 1);
			}else if(i == 5)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 2);
			}else if(i == 6)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 3);
			}else if(i == 7)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 4);
			}else if(i == 8)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -4);
			}else if(i == 9)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 5);
			}else if(i == 10)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -5);
			}else if(i == 11)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -6);
			}else if(i == 12)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 6);
			}else if(i == 13)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, -7);
			}else if(i == 14)
			{
				transform.RotateAround (transform.parent.position, -Vector3.up, 7);
			}
			
				start = 0;
		}
        
 
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
			KillSelf();
		}
		
	}
	
  	void OnMouseDown() {
        KillSelf();
    }
	
	void KillSelf()
	{
		Destroy(gameObject, .3f);
		MeshRenderer mr = transform.gameObject.GetComponent<MeshRenderer>();
		mr.enabled = false;
		bloodParticle.Play();
	}
 
}

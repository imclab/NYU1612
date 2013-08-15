using UnityEngine;
using System.Collections;

public class fishanimate : MonoBehaviour {
	
	public Rigidbody fishRigidBody;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(fishRigidBody.velocity.magnitude > 1f)
		{
			animation.CrossFade("MoveRight");
		}
	}
	
}

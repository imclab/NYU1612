using UnityEngine;
using System.Collections;

public class addxforce : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	void OnTriggerStay(Collider obj)
	{
		
		obj.rigidbody.AddForce(1000f,0f,0f);
	}
}

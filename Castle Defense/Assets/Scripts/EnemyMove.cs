using UnityEngine;
using System.Collections;

public class EnemyMove : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void FixedUpdate()
	{
		rigidbody.velocity = new Vector3(-3f, 0f, 0f);
		//rigidbody.AddForce(-17f, 0f, 0f, ForceMode.Acceleration);
	}
	
	void OnCollisionEnter()
	{
		Destroy(this.gameObject);
	}
}

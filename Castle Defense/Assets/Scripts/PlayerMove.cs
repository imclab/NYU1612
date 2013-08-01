using UnityEngine;
using System.Collections;

public class PlayerMove : MonoBehaviour {
	
	public float moveSpeed = .5f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void FixedUpdate()
	{
		if(Input.GetKey(KeyCode.A))
		{
			rigidbody.AddForce(0f,0f, moveSpeed, ForceMode.VelocityChange);
		}
		if(Input.GetKey(KeyCode.D))
		{
			rigidbody.AddForce(0f,0f, -moveSpeed, ForceMode.VelocityChange);
		}
	}
}

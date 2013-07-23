using UnityEngine;
using System.Collections;

public class FishControl : MonoBehaviour {
	
	Vector3 moveVector;
	float rotationY;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		moveVector = Vector3.zero;
		
//		if(Input.GetKey(KeyCode.S))
//		{
//			moveVector -= transform.forward;
//
//		}
//		if(Input.GetKey(KeyCode.W))
//		{
//			moveVector += transform.forward;
//		}
		moveVector = transform.forward * Input.GetAxis("Vertical");
		moveVector += transform.right * Input.GetAxis("Horizontal");
		
		transform.Rotate(0f, Input.GetAxis("Mouse X") * 5, 0f);
		rotationY += Input.GetAxis("Mouse Y");
		transform.localEulerAngles = new Vector3(rotationY,transform.localEulerAngles.y, 0f);
	}
	
	void FixedUpdate()
	{
		rigidbody.AddForce(moveVector, ForceMode.VelocityChange);
	}
}

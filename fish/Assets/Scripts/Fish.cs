using UnityEngine;
using System.Collections;

public class Fish : MonoBehaviour {

	public Vector3 destination;
	public float roamRange;
	// Use this for initialization
	void Start () {
		destination = transform.position;
		roamRange = 40;
		InvokeRepeating("SetNewDestination", 0f, 5f);
		
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.rotation = Quaternion.LookRotation(rigidbody.velocity);
	}
	
	void FixedUpdate()
	{
		rigidbody.AddForce((destination - transform.position).normalized,ForceMode.VelocityChange);
	}
	
	void SetNewDestination()
	{
		SetNewDestination(Random.insideUnitSphere * roamRange);
	}
	
	public void SetNewDestination(Vector3 dest)
	{
		destination = dest;
	}
}

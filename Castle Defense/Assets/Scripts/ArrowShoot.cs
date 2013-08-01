using UnityEngine;
using System.Collections;

public class ArrowShoot : MonoBehaviour {
	
	public Transform arrow;
	float arrowShootCD;
	float shotPower;
	public float force;
	
	// Use this for initialization
	void Start () {
		arrowShootCD = .1f;
		shotPower = 0f;
		force = 700;
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetMouseButton(0))
		{
			if(shotPower < 2)
			{
				
				shotPower += Time.deltaTime * 4;
				print (shotPower);
			}
		}
		if(Input.GetMouseButtonUp(0))
		{
			Transform go = Instantiate(arrow, transform.position + transform.forward, Quaternion.identity) as Transform;
			go.rigidbody.AddForce(transform.forward * force * shotPower);
			shotPower = 0f;
		}
	}
}

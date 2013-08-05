using UnityEngine;
using System.Collections;

public class PlayerFollower : MonoBehaviour {
	
	public Transform follow;
	public float speed = 10f;
	public Transform planet;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		//transform.RotateAround(planet.position, transform.right, speed * Time.deltaTime);
		transform.rotation = Quaternion.Slerp(transform.rotation, follow.rotation, Time.deltaTime * speed);
		transform.position = Vector3.Lerp(transform.position, follow.position, Time.deltaTime * speed);
		//Quaternion.Slerp(transform.rotation, follow.rotation, 1);
		
	}
}

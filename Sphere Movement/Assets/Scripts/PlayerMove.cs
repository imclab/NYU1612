using UnityEngine;
using System.Collections;

public class PlayerMove : MonoBehaviour {

	public float speed = 1f;
	public Transform planet;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.RotateAround(planet.position, transform.right, speed * Time.deltaTime);
		
		if (Input.GetKeyDown(KeyCode.A))
		{
			transform.RotateAround (planet.position, transform.forward, 1);
		}
        if (Input.GetKeyDown(KeyCode.D))
		{
			
			transform.RotateAround (planet.position, transform.forward, -1);
		}
	}
}

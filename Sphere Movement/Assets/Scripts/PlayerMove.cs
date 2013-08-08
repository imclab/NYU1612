using UnityEngine;
using System.Collections;

public class PlayerMove : MonoBehaviour {//mover for player to follow

	public float speed = .5f;
	public Transform planet;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.RotateAround(planet.position, transform.right, speed * Time.deltaTime);//move along surface of planet
		
		if (Input.GetKeyDown(KeyCode.A))//left
		{
			transform.RotateAround (planet.position, transform.forward, .5f);
		}
        if (Input.GetKeyDown(KeyCode.D))//right
		{
			
			transform.RotateAround (planet.position, transform.forward, -.5f);
		}
	}
}

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BallClick : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GameLogic.instance.balls.Add(this);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnMouseDown()
	{
		GameLogic.instance.balls.Remove(this);
		Destroy(gameObject);
	}
}

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameLogic : MonoBehaviour {
	
	public static GameLogic instance;
	public List<BallClick> balls = new List<BallClick>();
	
	void Awake(){
		instance = this;	
	}
	
	// Use this for initialization
	void Start () {
		
	}
	
	
	
	// Update is called once per frame
	void Update () {
		if( balls.Count == 0 )
		{
			print ("winnar");
		}
	}
}

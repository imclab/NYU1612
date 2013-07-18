using UnityEngine;
using System.Collections;

public class shoottrigger : MonoBehaviour {
	
	bool shot = false;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	void OnTriggerEnter()
	{
		if(shot == false)
		{
			transform.parent.gameObject.AddComponent("cylinderShoot");
			shot = true;
		}
	}
}

using UnityEngine;
using System.Collections;

public class trigger : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	void OnTriggerEnter(Collider other)
	{
		if(other.transform.name == "Sphere")
		{
			light.enabled = false;
		}
	}
}

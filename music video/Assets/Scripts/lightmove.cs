using UnityEngine;
using System.Collections;

public class lightmove : MonoBehaviour {
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += new Vector3(Time.deltaTime * 2f,0,Time.deltaTime * -.5f);
		
	}
}

using UnityEngine;
using System.Collections;

public class HealthPU : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate(new Vector3(0f, Mathf.Sin(Time.time * 10f), 0f) * .05f, Space.Self);
	}
}

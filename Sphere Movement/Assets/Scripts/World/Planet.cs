using UnityEngine;
using System.Collections;

public class Planet : MonoBehaviour {
	
	public GameObject prefab;
	public float speed = 25.0f;
	
	private float delay = 2.0f;
	
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(-speed * Time.deltaTime * Vector3.right); 
				
	}
	
	
}

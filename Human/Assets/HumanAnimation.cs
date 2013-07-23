using UnityEngine;
using System.Collections;

public class HumanAnimation : MonoBehaviour {

	public Rigidbody humanRigidbody; // assign in inspector

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {

        if ( humanRigidbody.velocity.magnitude > 1f ) {
            animation.CrossFade("walk");
        } else { // otherwise, velocity.magnitude < 1f
            animation.CrossFade("stand");
        }

	}
}

using UnityEngine;
using System.Collections;

public class HumanMove : MonoBehaviour {


    Vector3 moveVector;
    float rotationY;

	void Start () {

	}

	// Update is called once per frame
	void Update () {
        moveVector = new Vector3( 0f, 0f, 0f );

        

        moveVector = transform.forward * Input.GetAxis( "Vertical" );
        moveVector += transform.right * Input.GetAxis( "Horizontal" );

        transform.Rotate( 0f, Input.GetAxis( "Mouse X" ), 0f );

        rotationY += Input.GetAxis( "Mouse Y" );
        transform.localEulerAngles = new Vector3( rotationY, transform.localEulerAngles.y, 0f );


	}

    void FixedUpdate() {
        rigidbody.AddForce( moveVector, ForceMode.VelocityChange );
    }
}

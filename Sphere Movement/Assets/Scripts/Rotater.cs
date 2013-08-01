using UnityEngine;
using System.Collections;

public class Rotater : MonoBehaviour {
	
    private Quaternion q; 
    private Quaternion qTo;
    public float speed = 5.0f;

    void  Start (){
        q = Quaternion.AngleAxis(5.0f, transform.up);
        qTo = transform.rotation;
    }

    void  Update (){
        if (Input.GetKeyDown(KeyCode.H))
            qTo = q * qTo;
		transform.rotation = Quaternion.RotateTowards(transform.rotation, qTo, speed * Time.deltaTime);   
    }
}
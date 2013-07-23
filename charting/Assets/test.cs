using UnityEngine;
using System.Collections;


public class test : MonoBehaviour {
float width = 1.0f;
Color color = Color.black;
 
void OnGUI () {
    Vector2 pointA = new Vector2(Screen.width/2, Screen.height/2);
    Vector2 pointB = new Vector2(1,1);
    Drawing.DrawLine(pointA, pointB, color, width);
}
}

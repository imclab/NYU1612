using UnityEngine;
 
public class SphericProjectile : MonoBehaviour
{
    public float radius = 0.6f;
    public float translateSpeed = 270.0f;
    public float angle = 0.0f;
    public Quaternion rotation = Quaternion.identity;
 
    Vector3 direction = Vector3.one;
 
    void Start()
    {
        Destroy(gameObject, 1.0f);
    }
 
    void Update()
    {
        direction = new Vector3(Mathf.Sin(angle), Mathf.Cos(angle));
        Translate(0, translateSpeed);
        UpdatePositionRotation();
    }
 
    void Translate(float x, float y)
    {
        var perpendicular = new Vector3(-direction.y, direction.x);
        var verticalRotation = Quaternion.AngleAxis(y * Time.deltaTime, perpendicular);
        var horizontalRotation = Quaternion.AngleAxis(x * Time.deltaTime, direction);
        rotation *= horizontalRotation * verticalRotation;
    }
 
    void UpdatePositionRotation()
    {
        transform.localPosition = rotation * Vector3.forward * radius;
        transform.rotation = rotation * Quaternion.LookRotation(direction, Vector3.forward);
    }
}
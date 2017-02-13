using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnlockCursor : MonoBehaviour {

	CursorLockMode wantedMode;



	void Start(){

		Cursor.lockState = wantedMode;
		Cursor.visible = (CursorLockMode.Locked != wantedMode);

	}
	
	// Update is called once per frame
	void Update () {
		
	}
}

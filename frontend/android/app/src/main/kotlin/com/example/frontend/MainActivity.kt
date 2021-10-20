package com.example.frontend

import android.content.Intent
import android.app.PendingIntent
import android.nfc.NfcAdapter
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    
    override fun onResume() {
        super.onResume()
        val nfcAdapter: NfcAdapter = NfcAdapter.getDefaultAdapter(this)
        val intent = Intent(this, MainActivity::class.java)
        intent.setFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP)
        val pendingIntent: PendingIntent = PendingIntent.getActivities(this, 0, arrayOf<Intent>(intent), 0)
        if (nfcAdapter == null) return
        val techList = arrayOf<Array<String>>()
        nfcAdapter.enableForegroundDispatch(this, pendingIntent, null, null)
    }

    
    override fun onPause() {
        super.onPause()
        val nfcAdapter: NfcAdapter = NfcAdapter.getDefaultAdapter(this) ?: return
        nfcAdapter.disableForegroundDispatch(this)
    }

}

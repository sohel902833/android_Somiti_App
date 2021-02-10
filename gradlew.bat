package com.example.collagemanagementsystem;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class ClassListActivity extends AppCompatActivity {


    private  Spinner classlistSpinner;
    String[] text;
    private  DatabaseReference databaseReference;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_class_list);



        databaseReference= FirebaseDatabase.getInstance().getReference().child("collage");



        classlistSpinner=findViewById(R.id.classList_SpinnerId);
        ArrayAdapter<String> adapter=new ArrayAdapter<String>(this,R.layout.spinner_sample_layoute,R.id.spinner_sample_layoutTextviewid,text);












    }


    @Override
    protected void onStart() {
        super.onStart();

        databaseReference.child("computer").addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {

                if(snapshot.exists()){
                    for ( int i=0; i<=snapshot.getChildrenCount(); i++){

                            String text=snapshot.child("one").getValue().toString();
                    //        text[i]=snapshot.getValue().toString();
                     //   classlistSpinner.setAdapter(adapter);


                    }
                }

            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });





    }
}                                                                                                                                                                                                                                                    
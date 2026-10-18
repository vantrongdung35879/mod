.class final Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "ApolloVoiceDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p2

    .line 362
    const-string/jumbo v1, "state"

    const-string v2, "android.bluetooth.profile.extra.STATE"

    .line 0
    const-string v3, "headset connect ,cur state is "

    const-string v4, "headset disconnect ,cur state is "

    const-string v5, "BroadcastReceiver ACTION_HEADSET_PLUG onReceive bSetValue="

    const-string v6, "ApolloVoiceDeviceManager ::SCO cur state is "

    const-string v7, "bluetooth connect, isBluetoothScoAvailableOffCall is "

    const-string v8, "bluetooth disconnect,cur state is "

    const-string v9, "bluetooth connect ,cur state is "

    .line 364
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "android.bluetooth.adapter.extra.STATE"

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/4 v12, 0x0

    const-string v16, ""

    if-nez v10, :cond_8

    .line 365
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_1

    .line 409
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v7, 0xa

    if-eqz v2, :cond_4

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 411
    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v15, :cond_1

    goto :goto_0

    .line 429
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 430
    invoke-static {v15}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$402(Z)Z

    .line 431
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    const/16 v0, 0xb

    .line 432
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 433
    const-string v16, "headset connect"

    .line 434
    invoke-static {v15}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->SetHeadSetState(Z)V

    goto :goto_0

    .line 414
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 415
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$402(Z)Z

    .line 416
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->SetHeadSetState(Z)V

    .line 418
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    .line 420
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    goto :goto_0

    .line 425
    :cond_3
    invoke-static {v7}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 439
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 442
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 445
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$502(I)I

    if-ne v0, v15, :cond_5

    .line 447
    invoke-static {v15}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$602(Z)Z

    .line 448
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$100()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto/16 :goto_4

    :cond_5
    if-nez v0, :cond_12

    .line 450
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$602(Z)Z

    .line 451
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$100()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 452
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceSetMode(I)Z

    goto/16 :goto_4

    .line 455
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 457
    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 460
    const-string v0, "ApolloVoiceDeviceManger::Open bluetooth.\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    if-ne v0, v7, :cond_12

    .line 465
    const-string v0, "ApolloVoiceDeviceManger::Close Bluetooth.\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 466
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 467
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V

    goto/16 :goto_4

    .line 367
    :cond_8
    :goto_1
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 368
    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 369
    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    if-eq v3, v2, :cond_f

    if-ne v0, v2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    if-eq v1, v15, :cond_b

    if-ne v0, v15, :cond_12

    .line 406
    :cond_b
    const-string v0, "bluetoothHeadset connecting..."

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return-void

    .line 387
    :cond_c
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$200()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 392
    :cond_d
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 393
    const-string v16, "bluetooth headset disconnect"

    .line 394
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V

    .line 396
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$400()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xb

    .line 398
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    goto :goto_4

    :cond_e
    const/16 v0, 0x14

    .line 402
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    goto :goto_4

    .line 372
    :cond_f
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$100()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-nez v0, :cond_10

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$100()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return-void

    .line 377
    :cond_10
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$200()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 379
    :cond_11
    invoke-static {v15}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 381
    const-string v16, "bluetooth headset connect"

    .line 382
    invoke-static {v15}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V

    const/16 v0, 0x15

    .line 383
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    :cond_12
    :goto_4
    move-object/from16 v0, v16

    .line 470
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$300()I

    move-result v1

    if-eqz v1, :cond_13

    .line 472
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$700()Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener;

    move-result-object v1

    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$300()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener;->onStatus(ILjava/lang/String;)V

    .line 473
    invoke-static {v12}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$302(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_5
    return-void
.end method

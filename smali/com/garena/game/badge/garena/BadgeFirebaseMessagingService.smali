.class public Lcom/garena/game/badge/garena/BadgeFirebaseMessagingService;
.super Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;
.source "BadgeFirebaseMessagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/garena/game/badge/AOVPushHandle;->getStartCommandIntent(Landroid/app/Service;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/garena/game/badge/AOVPushHandle;->handleIntent(Landroid/app/Service;Landroid/content/Intent;)V

    .line 54
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeletedMessages()V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/garena/game/badge/AOVPushHandle;->onDeletedMessages(Landroid/app/Service;)V

    .line 25
    invoke-super {p0}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->onDeletedMessages()V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/garena/game/badge/AOVPushHandle;->onMessageReceived(Landroid/app/Service;Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 19
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/garena/game/badge/AOVPushHandle;->onMessageSent(Landroid/app/Service;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->onMessageSent(Ljava/lang/String;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/garena/game/badge/AOVPushHandle;->onNewToken(Landroid/app/Service;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->onNewToken(Ljava/lang/String;)V

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/garena/game/badge/AOVPushHandle;->onSendError(Landroid/app/Service;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    invoke-super {p0, p1, p2}, Lcom/tencent/gcloud/msdk/push/FirebasePushReceiver;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

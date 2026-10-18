.class Lcom/tencent/gcloud/msdk/extend/FirebaseExtend$1;
.super Ljava/lang/Object;
.source "FirebaseExtend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/extend/FirebaseExtend;->getInstanceIDAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/extend/FirebaseExtend;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/extend/FirebaseExtend;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$seqID"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend$1;->this$0:Lcom/tencent/gcloud/msdk/extend/FirebaseExtend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 50
    sget-object v0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "[ "

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] MSDKFirebase must initialize first, return empty value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 55
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] MSDKFirebase getInstanceIDAsync is: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    const-string v2, "Firebase"

    const-string v3, "getInstanceIDAsync"

    const/16 v4, 0x457

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 59
    :try_start_0
    const-string v3, "instanceID"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->extraJson:Ljava/lang/String;

    const/16 v0, 0x44d

    .line 64
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/extend/FirebaseExtend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

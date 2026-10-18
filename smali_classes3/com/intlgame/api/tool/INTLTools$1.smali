.class Lcom/intlgame/api/tool/INTLTools$1;
.super Ljava/lang/Object;
.source "INTLTools.java"

# interfaces
.implements Lcom/intlgame/api/tool/ReviewProxy$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLTools;->showRatingAlert()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$reviewManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLTools$1;->val$reviewManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 133
    const-string v0, "Review request complete "

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lcom/intlgame/api/tool/ReviewProxy;->isSuccessful(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Lcom/intlgame/api/tool/ReviewProxy;->getResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLTools$1;->val$reviewManager:Ljava/lang/Object;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/intlgame/api/tool/ReviewProxy;->launchReviewFlow(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$1;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$1;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-static {p1, v0}, Lcom/intlgame/api/tool/ReviewProxy;->addOnFailureListener(Ljava/lang/Object;Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;)V

    .line 144
    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$2;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$2;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-static {p1, v0}, Lcom/intlgame/api/tool/ReviewProxy;->addOnSuccessListener(Ljava/lang/Object;Lcom/intlgame/api/tool/ReviewProxy$OnSuccessListener;)V

    .line 151
    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$3;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$3;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-static {p1, v0}, Lcom/intlgame/api/tool/ReviewProxy;->addOnCompleteListener(Ljava/lang/Object;Lcom/intlgame/api/tool/ReviewProxy$OnCompleteListener;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {p1}, Lcom/intlgame/api/tool/ReviewProxy;->getException(Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Review ex:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    const-string p1, "Review ex but exception is null obj"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

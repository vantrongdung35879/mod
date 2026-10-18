.class Lcom/intlgame/api/tool/ReviewProxy$3;
.super Ljava/lang/Object;
.source "ReviewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/ReviewProxy;->addOnFailureListener(Ljava/lang/Object;Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/intlgame/api/tool/ReviewProxy$3;->val$listener:Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    const-string p1, "onFailure"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters from handler is missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    instance-of p3, p2, Ljava/lang/Exception;

    if-eqz p3, :cond_0

    .line 120
    move-object p1, p2

    check-cast p1, Ljava/lang/Exception;

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/intlgame/api/tool/ReviewProxy$3;->val$listener:Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;

    invoke-interface {p2, p1}, Lcom/intlgame/api/tool/ReviewProxy$OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown method has been invoked: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

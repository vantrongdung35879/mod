.class Lcom/intlgame/api/tool/INTLTools$1$3;
.super Ljava/lang/Object;
.source "INTLTools.java"

# interfaces
.implements Lcom/intlgame/api/tool/ReviewProxy$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLTools$1;->onComplete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/api/tool/INTLTools$1;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/INTLTools$1;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLTools$1$3;->this$0:Lcom/intlgame/api/tool/INTLTools$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Review onComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/api/tool/ReviewProxy;->isSuccessful(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void
.end method

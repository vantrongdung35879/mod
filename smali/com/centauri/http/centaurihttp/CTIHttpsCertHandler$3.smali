.class Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$3;
.super Ljava/lang/ThreadLocal;
.source "CTIHttpsCertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$3;->this$0:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$3;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

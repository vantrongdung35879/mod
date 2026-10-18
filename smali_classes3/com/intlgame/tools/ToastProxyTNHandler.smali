.class public Lcom/intlgame/tools/ToastProxyTNHandler;
.super Landroid/os/Handler;
.source "ToastProxyTNHandler.java"


# static fields
.field private static final SHOW:I


# instance fields
.field private final base:Landroid/os/Handler;

.field private final handleShowMethod:Ljava/lang/reflect/Method;

.field private final mTN:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Landroid/os/Handler;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intlgame/tools/ToastProxyTNHandler;->mTN:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lcom/intlgame/tools/ToastProxyTNHandler;->handleShowMethod:Ljava/lang/reflect/Method;

    .line 24
    iput-object p3, p0, Lcom/intlgame/tools/ToastProxyTNHandler;->base:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 31
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 32
    iget-object v0, p0, Lcom/intlgame/tools/ToastProxyTNHandler;->handleShowMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/intlgame/tools/ToastProxyTNHandler;->mTN:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowManager.BadTokenException Exception, the error =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/intlgame/tools/ToastProxyTNHandler;->base:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

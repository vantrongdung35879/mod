.class Lcom/tencent/gsdk/q0$b$a;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/q0$b;->a(Lcom/tencent/gsdk/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Lcom/tencent/gsdk/n0;


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/q0$b;Ljava/lang/reflect/Method;Lcom/tencent/gsdk/n0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/gsdk/q0$b$a;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/tencent/gsdk/q0$b$a;->b:Lcom/tencent/gsdk/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/gsdk/q0$b$a;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tencent/gsdk/q0$b$a;->b:Lcom/tencent/gsdk/n0;

    iget-object v2, v2, Lcom/tencent/gsdk/n0;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Send message to Cocos failed"

    invoke-static {v1, v2, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

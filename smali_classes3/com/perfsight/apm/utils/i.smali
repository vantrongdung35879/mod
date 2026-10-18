.class Lcom/perfsight/apm/utils/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/utils/j$a;->a(Lcom/perfsight/apm/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Lcom/perfsight/apm/b/c;

.field final synthetic c:Lcom/perfsight/apm/utils/j$a;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/utils/j$a;Ljava/lang/reflect/Method;Lcom/perfsight/apm/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/utils/i;->c:Lcom/perfsight/apm/utils/j$a;

    iput-object p2, p0, Lcom/perfsight/apm/utils/i;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/perfsight/apm/utils/i;->b:Lcom/perfsight/apm/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/utils/i;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/perfsight/apm/utils/i;->b:Lcom/perfsight/apm/b/c;

    iget-object v1, v1, Lcom/perfsight/apm/b/c;->c:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Send message to cocos failed"

    invoke-static {v0, v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

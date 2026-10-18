.class Lcom/tencent/tme/live/aov/api/SDKAPIImplement$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/aov/api/SDKAPIImplement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SDKAPIImplement"

    const-string v1, "mConfigTimeOutRun is called"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->access$002(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;Z)Z

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    invoke-static {v0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->access$100(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callAsyncStartCallback(II)V

    return-void
.end method

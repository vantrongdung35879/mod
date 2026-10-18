.class Lcom/tencent/tme/live/aov/api/HostAPIWrapper$3;
.super Lcom/tencent/tme/biz/api/HostListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/aov/api/HostAPIWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$3;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-direct {p0}, Lcom/tencent/tme/biz/api/HostListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "callHostEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$3;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->callUnity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

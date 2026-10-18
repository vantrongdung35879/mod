.class Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;
.super Ljava/util/TimerTask;
.source "HeartBeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/HeartBeat;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/service/HeartBeat;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/service/HeartBeat;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;->this$0:Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;->this$0:Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    invoke-static {v0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->access$100(Lcom/centauri/oversea/newnetwork/service/HeartBeat;)V

    return-void
.end method

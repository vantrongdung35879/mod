.class Lcom/centauri/oversea/newnetwork/service/HeartBeat$InstanceHolder;
.super Ljava/lang/Object;
.source "HeartBeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newnetwork/service/HeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/centauri/oversea/newnetwork/service/HeartBeat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;-><init>(Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;)V

    sput-object v0, Lcom/centauri/oversea/newnetwork/service/HeartBeat$InstanceHolder;->instance:Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

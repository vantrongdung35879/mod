.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$InstanceHolder;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newnetwork/http/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/centauri/oversea/newnetwork/http/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager$1;)V

    sput-object v0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$InstanceHolder;->instance:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

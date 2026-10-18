.class Lcom/centauri/oversea/business/CTIPayManager$InstanceHolder;
.super Ljava/lang/Object;
.source "CTIPayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/CTIPayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field static final instance:Lcom/centauri/oversea/business/CTIPayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/centauri/oversea/business/CTIPayManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/business/CTIPayManager;-><init>(Lcom/centauri/oversea/business/CTIPayManager$1;)V

    sput-object v0, Lcom/centauri/oversea/business/CTIPayManager$InstanceHolder;->instance:Lcom/centauri/oversea/business/CTIPayManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

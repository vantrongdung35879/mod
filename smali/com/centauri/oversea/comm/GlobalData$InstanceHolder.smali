.class Lcom/centauri/oversea/comm/GlobalData$InstanceHolder;
.super Ljava/lang/Object;
.source "GlobalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/GlobalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/centauri/oversea/comm/GlobalData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/centauri/oversea/comm/GlobalData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/comm/GlobalData;-><init>(Lcom/centauri/oversea/comm/GlobalData$1;)V

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData$InstanceHolder;->instance:Lcom/centauri/oversea/comm/GlobalData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$BaseStationManagerInstance;
.super Ljava/lang/Object;
.source "BaseStationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseStationManagerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$BaseStationManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;
    .locals 1

    .line 39
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$BaseStationManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;

    return-object v0
.end method

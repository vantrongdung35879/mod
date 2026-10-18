.class Lcom/ihoc/tgpatask/TransceiverManager$TaskManagerInstance;
.super Ljava/lang/Object;
.source "TransceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/TransceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskManagerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/TransceiverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/ihoc/tgpatask/TransceiverManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/TransceiverManager;-><init>(Lcom/ihoc/tgpatask/TransceiverManager$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/TransceiverManager$TaskManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/TransceiverManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/TransceiverManager;
    .locals 1

    .line 101
    sget-object v0, Lcom/ihoc/tgpatask/TransceiverManager$TaskManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/TransceiverManager;

    return-object v0
.end method

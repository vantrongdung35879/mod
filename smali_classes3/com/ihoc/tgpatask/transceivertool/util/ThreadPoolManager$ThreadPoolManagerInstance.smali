.class Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$ThreadPoolManagerInstance;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadPoolManagerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$ThreadPoolManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$ThreadPoolManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;

    return-object v0
.end method

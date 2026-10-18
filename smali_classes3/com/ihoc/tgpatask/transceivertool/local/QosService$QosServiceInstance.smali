.class Lcom/ihoc/tgpatask/transceivertool/local/QosService$QosServiceInstance;
.super Ljava/lang/Object;
.source "QosService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/QosService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QosServiceInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/QosService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;-><init>()V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$QosServiceInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ihoc/tgpatask/transceivertool/local/QosService;
    .locals 1

    .line 59
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$QosServiceInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    return-object v0
.end method

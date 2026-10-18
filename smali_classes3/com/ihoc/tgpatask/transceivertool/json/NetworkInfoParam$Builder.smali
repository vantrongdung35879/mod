.class public Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
.super Ljava/lang/Object;
.source "NetworkInfoParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private duration:I

.field private ips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localSessionId:Ljava/lang/String;

.field private size:I

.field private sotimeout:I

.field private waittime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 56
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->size:I

    const/16 v0, 0xa

    .line 57
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->count:I

    const/16 v0, 0x1f4

    .line 58
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->duration:I

    const/16 v0, 0x2710

    .line 59
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->waittime:I

    const/16 v0, 0xc8

    .line 60
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->sotimeout:I

    .line 62
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->localSessionId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->size:I

    return p0
.end method

.method static synthetic access$100(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->count:I

    return p0
.end method

.method static synthetic access$200(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->duration:I

    return p0
.end method

.method static synthetic access$300(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->ips:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->waittime:I

    return p0
.end method

.method static synthetic access$500(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->sotimeout:I

    return p0
.end method

.method static synthetic access$600(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->localSessionId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;
    .locals 2

    .line 100
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;-><init>(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$1;)V

    return-object v0
.end method

.method public count(I)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0

    .line 70
    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->count:I

    return-object p0
.end method

.method public duration(I)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0

    .line 75
    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->duration:I

    return-object p0
.end method

.method public ips(Ljava/util/ArrayList;)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->ips:Ljava/util/ArrayList;

    return-object p0
.end method

.method public localSessionId(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->localSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public size(I)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0

    .line 65
    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->size:I

    return-object p0
.end method

.method public sotimeout(I)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0

    .line 90
    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->sotimeout:I

    return-object p0
.end method

.method public waittime(I)Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;
    .locals 0

    .line 85
    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam$Builder;->waittime:I

    return-object p0
.end method

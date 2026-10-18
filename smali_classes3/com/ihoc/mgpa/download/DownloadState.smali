.class public final enum Lcom/ihoc/mgpa/download/DownloadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/download/DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/download/DownloadState;

.field public static final enum ERROR:Lcom/ihoc/mgpa/download/DownloadState;

.field public static final enum FINISH:Lcom/ihoc/mgpa/download/DownloadState;

.field public static final enum START:Lcom/ihoc/mgpa/download/DownloadState;


# instance fields
.field public description:Ljava/lang/String;

.field public state:I


# direct methods
.method private static synthetic $values()[Lcom/ihoc/mgpa/download/DownloadState;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/ihoc/mgpa/download/DownloadState;

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->ERROR:Lcom/ihoc/mgpa/download/DownloadState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/download/DownloadState;

    const/4 v1, -0x1

    const-string v2, "error"

    const-string v3, "ERROR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ihoc/mgpa/download/DownloadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/download/DownloadState;->ERROR:Lcom/ihoc/mgpa/download/DownloadState;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/download/DownloadState;

    const/4 v1, 0x1

    const-string v2, "start"

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/ihoc/mgpa/download/DownloadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/download/DownloadState;

    const/16 v1, 0x64

    const-string v2, "finish"

    const-string v3, "FINISH"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ihoc/mgpa/download/DownloadState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/download/DownloadState;->$values()[Lcom/ihoc/mgpa/download/DownloadState;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/download/DownloadState;->$VALUES:[Lcom/ihoc/mgpa/download/DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    .line 3
    iput-object p4, p0, Lcom/ihoc/mgpa/download/DownloadState;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/download/DownloadState;
    .locals 1

    .line 1
    const-class v0, Lcom/ihoc/mgpa/download/DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/download/DownloadState;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/download/DownloadState;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->$VALUES:[Lcom/ihoc/mgpa/download/DownloadState;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/download/DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/download/DownloadState;

    return-object v0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    return v0
.end method

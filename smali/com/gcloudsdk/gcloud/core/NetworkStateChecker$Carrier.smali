.class public final enum Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;
.super Ljava/lang/Enum;
.source "NetworkStateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/gcloud/core/NetworkStateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Carrier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

.field public static final enum ChinaMobile:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

.field public static final enum ChinaSpacecom:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

.field public static final enum ChinaTelecom:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

.field public static final enum ChinaUnicom:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

.field public static final enum None:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

.field public static final enum Unknown:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 42
    new-instance v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->None:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    .line 43
    new-instance v1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const-string v3, "Unknown"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->Unknown:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    .line 44
    new-instance v3, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const-string v5, "ChinaMobile"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->ChinaMobile:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    .line 45
    new-instance v5, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const-string v7, "ChinaUnicom"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->ChinaUnicom:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    .line 46
    new-instance v7, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const-string v9, "ChinaTelecom"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->ChinaTelecom:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    .line 47
    new-instance v9, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const-string v11, "ChinaSpacecom"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->ChinaSpacecom:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    const/4 v11, 0x6

    .line 40
    new-array v11, v11, [Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->$VALUES:[Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;
    .locals 1

    .line 40
    const-class v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    return-object p0
.end method

.method public static values()[Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;
    .locals 1

    .line 40
    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->$VALUES:[Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    invoke-virtual {v0}, [Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$Carrier;

    return-object v0
.end method

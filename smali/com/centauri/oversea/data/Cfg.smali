.class public Lcom/centauri/oversea/data/Cfg;
.super Ljava/lang/Object;
.source "Cfg.java"


# instance fields
.field public mDetectDoain:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mIpList:[Ljava/lang/String;

.field public mReportDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/data/Cfg;->mReportDomain:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/centauri/oversea/data/Cfg;->mDetectDoain:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/centauri/oversea/data/Cfg;->mDomain:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/centauri/oversea/data/Cfg;->mIpList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/centauri/oversea/data/Cfg;->mDomain:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/centauri/oversea/data/Cfg;->mIpList:[Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/centauri/oversea/data/Cfg;->mReportDomain:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/centauri/oversea/data/Cfg;->mDetectDoain:Ljava/lang/String;

    return-void
.end method

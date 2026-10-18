.class Lcom/centauri/comm/log/util/CTILogDataReporter$Holder;
.super Ljava/lang/Object;
.source "CTILogDataReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/comm/log/util/CTILogDataReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/centauri/comm/log/util/CTILogDataReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/centauri/comm/log/util/CTILogDataReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/comm/log/util/CTILogDataReporter;-><init>(Lcom/centauri/comm/log/util/CTILogDataReporter$1;)V

    sput-object v0, Lcom/centauri/comm/log/util/CTILogDataReporter$Holder;->INSTANCE:Lcom/centauri/comm/log/util/CTILogDataReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/centauri/comm/log/util/CTILogDataReporter;
    .locals 1

    .line 23
    sget-object v0, Lcom/centauri/comm/log/util/CTILogDataReporter$Holder;->INSTANCE:Lcom/centauri/comm/log/util/CTILogDataReporter;

    return-object v0
.end method

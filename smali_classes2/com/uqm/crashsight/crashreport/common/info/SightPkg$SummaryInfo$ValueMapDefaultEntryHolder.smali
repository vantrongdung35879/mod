.class final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$ValueMapDefaultEntryHolder;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueMapDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12832
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$17400()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const-string v2, ""

    sget-object v3, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    .line 12831
    invoke-static {v0, v1, v2, v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

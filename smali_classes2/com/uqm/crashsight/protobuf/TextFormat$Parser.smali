.class public Lcom/uqm/crashsight/protobuf/TextFormat$Parser;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/TypeRegistry;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field private f:Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;)V
    .locals 0

    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->a:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    .line 1475
    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->b:Z

    .line 1476
    iput-boolean p3, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->c:Z

    .line 1477
    iput-boolean p4, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->d:Z

    .line 1478
    iput-object p5, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->e:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1479
    iput-object p6, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->f:Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;B)V
    .locals 0

    .line 1438
    invoke-direct/range {p0 .. p6}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;-><init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;)V

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;
    .locals 1

    .line 1484
    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;-><init>()V

    return-object v0
.end method
